.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
or cl, dl
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
or ax, -4210
and dil, dil
jmp .bb_0.1
.bb_0.1:
sub bl, al
cmovno di, ax
and al, al
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 7
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
test bl, -14
xor al, 34
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
test eax, 1287331633
or al, -17
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
