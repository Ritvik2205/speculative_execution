.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, al
sbb edx, edx
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 45
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 45
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], eax
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
jmp .bb_0.1
.bb_0.1:
cmovno di, di
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 75
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
test dl, al
test di, 88
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
