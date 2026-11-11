.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
or al, -24
and di, 99
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
xor dl, -19
xor dl, 8
and sil, -56
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
or si, -12
test ecx, -1843375753
xor ebx, 41
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
