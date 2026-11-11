.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea di, qword ptr [rsi + rdx]
sbb rax, 786640702
cmovnb rdi, rbx
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
cmovz ebx, edi
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rsi
cmovnbe si, dx
test bl, -8
and rsi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rsi]
lea esi, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
dec rdx
imul edi, eax
adc esi, -66
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], bx
add dl, 107 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
