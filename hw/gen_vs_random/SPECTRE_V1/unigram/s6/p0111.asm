.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ecx, esi
dec dil
and bl, cl
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
test sil, 47
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rsi + rcx]
sbb dl, 127
sub bl, sil
add cl, 105 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx]
cmp eax, 692647572
cmp al, al
setnb dil
and rdx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdx]
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
