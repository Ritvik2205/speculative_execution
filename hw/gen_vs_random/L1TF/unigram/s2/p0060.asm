.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add edx, 56
lea esi, qword ptr [rcx + rdi + 72]
btr rdi, rdx
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
or edx, edi
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
cmp di, 45
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 95
cmovnp ax, cx
add al, -34 # instrumentation
setnp dil
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rdi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdi]
cmovbe rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
