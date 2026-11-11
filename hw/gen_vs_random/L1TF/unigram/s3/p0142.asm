.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 31
and rdx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdx]
add dl, -48 # instrumentation
lea edx, qword ptr [rdx + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
lea rcx, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], esi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 79
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 49
add esi, edi
bts edi, 88
and eax, -1143711697
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rdx
cmovp si, bx
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
