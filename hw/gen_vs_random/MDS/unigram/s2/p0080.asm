.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
or sil, sil
or rdx, -48
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
test cl, cl
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 7
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
cmovb edi, edx
or dil, dl
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and dl, cl
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
cmovns rbx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
xor rcx, -2
and dl, -1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rbx]
bt edx, 97
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
