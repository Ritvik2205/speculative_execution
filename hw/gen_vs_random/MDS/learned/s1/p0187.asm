.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
xor al, 34
xor bl, -88
and rax, 1250429750
or dil, -78
bt di, si
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
bt cx, si
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
test dil, -51
and si, -121
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
xor al, cl
or dil, al
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
xor al, dil
test ax, -20900
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
