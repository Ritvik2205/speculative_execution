.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, dl
adc sil, cl
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
cmp rcx, 22
and rdi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
or bl, 73
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], esi
test al, bl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 69
mov dx, ax
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ebx
not rbx
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
