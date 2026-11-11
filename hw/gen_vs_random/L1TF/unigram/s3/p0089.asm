.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, al
and al, -68
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 63
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
and bl, bl
and rdx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdx]
add al, al
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
jmp .bb_0.1
.bb_0.1:
mul rdx
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
add al, -95 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
and rbx, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
