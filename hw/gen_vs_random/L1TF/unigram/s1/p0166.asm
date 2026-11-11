.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rax]
inc ebx
add dl, 48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
test sil, cl
and rdi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdi]
or sil, bl
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rbx
xor bl, dil
setnle dl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
xchg edi, ebx
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
cmovnb edi, eax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
