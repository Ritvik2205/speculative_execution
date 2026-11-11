.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, -9
or eax, 1725503461
xor eax, 2063216578
or al, sil
bt ax, 76
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
cmovle rcx, rcx
test cl, -18
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
xor rcx, rax
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rcx, 107
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
not dl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
cmovle rcx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
