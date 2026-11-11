.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], di
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
xor edi, 69
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx], 95
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
cmp dil, al
jmp .bb_0.1
.bb_0.1:
cmovb edx, edx
sub cx, bx
lea edx, qword ptr [rax + rsi + 81]
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
test bl, 84
cmovns di, cx
movsx esi, sil
setno al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
