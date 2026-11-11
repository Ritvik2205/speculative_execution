.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
setbe dl
sub cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
sub dl, bl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, 42 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
cmp cl, al
adc bl, -73
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
xor rax, 29
sbb dl, 127
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 12
or cl, dl
setnle bl
imul rcx
jmp .bb_0.2
.bb_0.2:
add dl, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
lea edi, qword ptr [rdx + rdx]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rsi
cmovle si, si
and bl, sil
bts cx, cx
add al, 34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
sub dl, al
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
add dl, cl
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
