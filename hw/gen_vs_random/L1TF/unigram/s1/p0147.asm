.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cwde
cmovnz si, cx
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], di
lea di, qword ptr [rsi + rdi + 23]
and rcx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rcx]
lea ax, qword ptr [rsi]
add bl, sil
mul rax
cmovno rcx, rsi
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
xor al, bl
or ebx, esi
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], edi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
sub rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
