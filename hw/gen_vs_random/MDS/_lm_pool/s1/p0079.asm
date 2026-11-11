.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
or al, 16
and bl, 68
test ecx, -1843375753
bt di, si
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], di
xor bl, sil
btr dx, si
or al, 16
and al, 35
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 70
or al, -78
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
or al, dil
or al, -22
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
cmovnbe rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
