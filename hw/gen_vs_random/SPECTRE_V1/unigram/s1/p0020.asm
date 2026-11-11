.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
lea cx, qword ptr [rbx + rsi + 41]
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rcx]
bts rax, 140
lea rdi, qword ptr [rbx + rbx + 95]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
bt rdx, 54
dec rsi
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 85
xor bl, 62
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rbx
test eax, 5
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rcx]
xchg bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
