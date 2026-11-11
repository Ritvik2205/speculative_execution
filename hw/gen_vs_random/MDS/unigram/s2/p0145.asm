.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 122 # instrumentation
cmovl eax, eax
cmovp ecx, edx
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
test al, 22
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], edx
cmovl bx, ax
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
or al, dl
test sil, dl
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 70
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdx], dx
cmovle rsi, rbx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 30
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and sil, dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
xor edx, -13
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
