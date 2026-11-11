.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
or al, -58
or al, cl
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
test bl, bl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
add sil, bl
and bl, dl
or al, dil
bt cx, bx
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and edi, 23
and ax, 5001
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
or cx, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
