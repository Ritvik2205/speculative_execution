.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, al
imul cl
test bl, -8
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
bt rbx, rbx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rdx
bt rbx, 224
cmp di, 18
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
jo .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dl, bl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
xor bl, dl
cmp al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
