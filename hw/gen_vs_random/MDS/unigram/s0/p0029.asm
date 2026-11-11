.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], si
bts rcx, 86
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
xor al, dil
and di, si
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
btr rdi, 129
test sil, -96
or dl, dl
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
cmovno rdx, rdi
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
test ax, 6113
cmovnb si, ax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
