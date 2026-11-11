.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -34 # instrumentation
cmovs rsi, rcx
or di, di
and ax, ax
or al, al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
cmovnp rsi, rsi
not sil
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
cmovb bx, dx
not cl
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], edi
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -77
or rax, 1020005579
xor si, 91
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
or al, dl
or dl, -31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
