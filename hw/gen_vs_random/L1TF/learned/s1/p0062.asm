.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
add al, -104 # instrumentation
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
lea cx, qword ptr [rax + rcx]
xor cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
add dl, 100 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
neg edx
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
xor bl, bl
cmovnl ebx, esi
adc rsi, rcx
not al
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
bt rbx, rdi
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
imul rax, rax, -49
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rsi], eax
bts bx, dx
adc al, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
