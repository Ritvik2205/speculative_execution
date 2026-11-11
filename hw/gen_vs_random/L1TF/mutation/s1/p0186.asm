.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr bx, 104
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
lea ebx, qword ptr [rdi + rbx + 24078]
or dl, bl
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
neg dl
jmp .bb_0.1
.bb_0.1:
mov ecx, edx
xor bl, dl
adc rax, 1431457700
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], ax
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
sub edx, ebx
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -10
cmp dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
