.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -81
add cl, 6 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdx]
test bl, 84
test dx, 99
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
add cl, 6 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rax
add bl, 92 # instrumentation
sets cl
xor sil, dl
cmp eax, eax
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
