.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rdx, rax
add al, -48 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
btc ebx, 11
test edi, esi
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
bts ecx, ebx
mov sil, sil
or si, bx
dec edx
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], bx
lea rbx, qword ptr [rsi]
movzx si, cl
sub dx, 34
imul eax, eax, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
