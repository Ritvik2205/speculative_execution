.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not edi
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdi]
and rsi, rdx
add dl, 37 # instrumentation
cmovbe si, bx
lea esi, qword ptr [rcx + rax]
add al, 74
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], dx
lea esi, qword ptr [rcx]
mov bl, bl
jmp .bb_0.1
.bb_0.1:
sub rcx, -121
and rdi, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 14
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
