.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
add dl, -93 # instrumentation
setnb dl
lea rbx, qword ptr [rdi + rsi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and bx, -118
sbb al, sil
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
cmovle ecx, edx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
sub dil, -111
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 1
test ecx, 65
lea rcx, qword ptr [rdi + rdi + 3798]
and rsi, rsi
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
