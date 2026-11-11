.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], eax
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -6
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 84
add cl, 105 # instrumentation
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 9
sub cx, di
add cl, al
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 55
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
xor rcx, 9
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
lea bx, qword ptr [rsi + rbx]
cmovnle rdi, rdi
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 95
add rdx, 27
lea rcx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
