.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 87
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
setns dl
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rbx]
add dl, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 44
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
add al, 36 # instrumentation
lea esi, qword ptr [rsi + rdx + 42]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], dx
test bl, cl
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
