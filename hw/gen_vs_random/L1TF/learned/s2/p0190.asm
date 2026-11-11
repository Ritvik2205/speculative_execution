.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -2
inc bl
or al, -5
test al, -56
and cl, dl
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
seto bl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rbx]
sub cl, 86
xor di, 64
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
