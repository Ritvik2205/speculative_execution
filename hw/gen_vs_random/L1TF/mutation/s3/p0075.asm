.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
adc eax, -1211718481
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
sbb bl, cl
or al, al
and rsi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rsi]
setnl dl
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
add bl, cl
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
sbb dx, di
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
