.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rax]
movsx rdi, di
and bl, bl
setno dl
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], rax
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], ecx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
add al, 24 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 3
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ecx
sub edx, ecx
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
lea eax, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
