.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], 20
sub bl, al
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
sub cl, bl
lea cx, qword ptr [rsi + rbx]
sub bl, dl
add al, -109
mov bl, cl
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
