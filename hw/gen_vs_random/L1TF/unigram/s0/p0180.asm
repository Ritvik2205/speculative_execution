.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 88
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rcx
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rcx
add al, 31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
lea cx, qword ptr [rcx + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
xchg esi, edx
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
cmovb dx, di
lea edx, qword ptr [rdi + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rcx]
mov bl, bl
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 1 # instrumentation
add bl, -9 # instrumentation
cmovs ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
