.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl rdi, rbx
cmp dl, bl
bt rcx, rdi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
sub cx, dx
cmovs si, di
cmp dl, al
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
sets bl
or sil, 3
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 11
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], si
cmp al, al
cmovnbe rdi, rsi
add al, -73 # instrumentation
setnbe al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
