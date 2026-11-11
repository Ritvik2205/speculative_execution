.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rcx
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
bt rdi, rax
xor cx, 113
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
xor rbx, rdi
btr ecx, ebx
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi], 33
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
add dl, 70 # instrumentation
sbb cl, 48
add bl, 68
add al, -21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 29
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
