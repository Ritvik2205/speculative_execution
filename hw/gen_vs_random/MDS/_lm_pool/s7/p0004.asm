.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 68
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
test bl, cl
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
xor rdx, -59
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor bl, -61
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
xor bl, cl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
or al, -22
and cl, 79
jmp .bb_0.1
.bb_0.1:
test bl, -9
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and al, bl
and dil, -39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
