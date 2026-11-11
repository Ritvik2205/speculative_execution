.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
lea dx, qword ptr [rsi + rsi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rdx
jbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 85
loopne .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmp rax, rsi
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx
cmovb ecx, esi
jns .bb_0.4
jmp .exit_0
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rsi]
xor si, 23
or al, 65
imul rdi, rbx
bt ecx, 198
lea cx, qword ptr [rdx + rdx]
test al, 70
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
xor rsi, -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
