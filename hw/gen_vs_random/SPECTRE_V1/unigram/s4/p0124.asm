.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rsi
and rbx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rbx]
adc dl, 97
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ecx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
xor sil, cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or cx, di
mov dl, bl
and rax, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
cmovnb di, bx
add rbx, 46
add cl, -29 # instrumentation
lea rdx, qword ptr [rdi + rdi + 74]
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
test al, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
