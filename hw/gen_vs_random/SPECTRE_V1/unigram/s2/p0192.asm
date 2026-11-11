.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
setp dl
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rcx
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
add al, -14 # instrumentation
lea ax, qword ptr [rbx + rdx]
add al, 120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -5 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
add cl, -56 # instrumentation
sbb rsi, 83
neg rbx
lea eax, qword ptr [rax]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
