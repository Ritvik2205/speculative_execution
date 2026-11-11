.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
xor bl, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 33
cmp dl, -56
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 2
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 12
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -380598914
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
