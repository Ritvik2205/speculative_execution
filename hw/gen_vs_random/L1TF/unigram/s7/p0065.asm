.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rax]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], bl
test ecx, eax
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], bl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add al, al
add al, al
mul rax
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], -54
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], di
bts edx, 21
add dl, -17 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
