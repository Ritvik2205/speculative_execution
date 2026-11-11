.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rcx, 34
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 99
neg dx
add dl, -124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rbx]
test di, 30
sub cl, bl
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ecx
and rsi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
sub rdx, 44
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
add dl, -15 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 100
cmovno rdi, rdx
cmovns rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
