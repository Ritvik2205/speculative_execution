.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, al
lea di, qword ptr [rax + rax + 44]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], ecx
xor rdi, 90
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 33
sub rbx, rax
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
setnle dil
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdi], di
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
lea rsi, qword ptr [rbx + rbx]
movzx eax, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
