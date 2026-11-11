.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
add bl, -9 # instrumentation
cmovs cx, di
or dil, -113
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
lea rbx, qword ptr [rdx + rcx]
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 9
sbb cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
add dl, 27 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdi]
sub bl, 15
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
