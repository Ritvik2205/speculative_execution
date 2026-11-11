.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rbx + rax]
add eax, 109
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
xor rax, rcx
add al, -48 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rsi]
add al, 39 # instrumentation
cmovnb ax, bx
lea cx, qword ptr [rdi + rbx]
cmovo rbx, rcx
lea di, qword ptr [rsi + rsi + 16]
add dl, 62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
add al, 39 # instrumentation
cmovnb bx, si
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rdx
cmovb ecx, ecx
xor esi, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
