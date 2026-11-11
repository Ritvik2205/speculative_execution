.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dl
lea di, qword ptr [rdi + rax]
and rbx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], edx
btc bx, 168
and rdi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdi]
bt rax, rsi
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -12
bt esi, 62
btr ebx, 82
add al, -112 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rbx]
xor sil, bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 73
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
