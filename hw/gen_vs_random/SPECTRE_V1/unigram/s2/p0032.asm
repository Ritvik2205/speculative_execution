.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
cmovz rax, rsi
cmp si, -11
add cl, -35 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
sub edi, 35
add bl, -104 # instrumentation
lea rbx, qword ptr [rcx + rdx + 83]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -127
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi]
sub dl, -48
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
add dl, -24 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rdx, -98
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
