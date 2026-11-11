.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, esi
and rbx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rbx]
btr bx, dx
test al, bl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 61
lea rcx, qword ptr [rdx + rax + 94]
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
xor dl, cl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 88
cmp al, -119
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
