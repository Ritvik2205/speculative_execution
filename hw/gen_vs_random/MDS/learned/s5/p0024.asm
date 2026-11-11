.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
xor al, 8
or bl, al
or dil, -78
xor al, cl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
btc si, 43
test al, sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
btc si, 43
or sil, dl
or al, -75
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
