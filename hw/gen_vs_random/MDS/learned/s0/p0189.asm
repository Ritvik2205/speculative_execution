.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
test sil, 41
or ax, 127
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
test bl, sil
btr ecx, eax
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
xor al, 55
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
test dil, bl
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
xor al, -19
jmp .bb_0.1
.bb_0.1:
test dil, dl
or dl, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
