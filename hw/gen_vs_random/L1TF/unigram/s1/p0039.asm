.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
add sil, -61
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
movsx rdi, si
cmp edi, 44
cmovb di, dx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -5
and al, -68
and rcx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rcx]
cmp dil, dil
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 64
mov rax, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
