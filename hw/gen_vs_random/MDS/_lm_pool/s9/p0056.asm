.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
or cl, bl
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
btr esi, ecx
and cl, al
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
or cl, 6
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
or al, -17
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
or al, 74
or cl, 30
test di, 46
xor cl, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
