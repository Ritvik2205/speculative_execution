.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, bl
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
dec sil
add al, 96 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
add dx, -90
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
sub cx, di
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovns rbx, rax
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
add dl, 20 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 26
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
cmp al, 46
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 96
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
