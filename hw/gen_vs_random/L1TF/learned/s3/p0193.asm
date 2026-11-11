.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -112 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
cmovl bx, si
dec di
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], si
jmp .bb_0.1
.bb_0.1:
add sil, 18
jmp .bb_0.2
.bb_0.2:
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -28
cmovp rbx, rdx
mov di, si
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and si, dx
cmovs esi, ecx
cmovns rcx, rcx
add dl, dil
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
