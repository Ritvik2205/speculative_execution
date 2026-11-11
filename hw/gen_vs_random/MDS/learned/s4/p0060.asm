.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
xor dl, dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
btc di, 164
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
test eax, -571234566
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and dl, -73
or dil, cl
btc si, 43
test ebx, -2015966884
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
test sil, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
