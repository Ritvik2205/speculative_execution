.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -93 # instrumentation
xchg rbx, rax
lea rsi, qword ptr [rdx + rcx]
lea rax, qword ptr [rax + rdx]
and rsi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rsi]
test rax, 1469613902
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], -55
bt esi, 21
jmp .bb_0.1
.bb_0.1:
add dl, -121 # instrumentation
cmovnp edx, ecx
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -104
and bl, 125
add bl, bl
lea rsi, qword ptr [rbx + rdx]
not cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
