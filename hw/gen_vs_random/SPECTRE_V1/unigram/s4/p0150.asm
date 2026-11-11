.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
xchg rsi, rcx
mov dil, dl
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
cmovnbe cx, ax
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
lea cx, qword ptr [rcx + rax]
or sil, al
add di, 44
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
and rdi, 5
add si, 25
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
sub bl, cl
setnp al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
