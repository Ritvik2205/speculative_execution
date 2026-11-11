.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
xor rbx, 83
lea rax, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
cmp bl, 123
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 17
seto dl
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
