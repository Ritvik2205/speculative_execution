.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, -32
imul rdi, rbx, 61
test bl, -8
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 8
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 7
and rbx, 25
cmovb ebx, eax
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], ax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
btc dx, 81
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 36
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
movsx rbx, cx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
